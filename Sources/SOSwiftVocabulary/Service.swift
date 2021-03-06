import Foundation

public protocol ServiceConformance:
                    ProductOrService
                {}

/// A service provided by an organization, e.g. delivery service, print services, etc.
public protocol Service: Intangible, ServiceConformance {
    /// The overall rating, based on a collection of reviews or ratings, of the item.
    var aggregateRating: AggregateRating? { get set }
    /// The geographic area where a service or offered item is provided.
    var areaServed: AreaServed? { get set }
    /// An intended audience, i.e. a group for whom something was created.
    var audience: Audience? { get set }
    /// A means of accessing the service (e.g. a phone bank, a web site, a location, etc.).
    var availableChannel: ServiceChannel? { get set }
    /// An award won by or for this item.
    /// - schema.org property name: award
    var awards: [String]? { get set }
    /// The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
    /// - schema.org property name: brand
    var brands: [BrandOrOrganization]? { get set }
    /// An entity that arranges for an exchange between a buyer and a seller. In most cases a broker never acquires or releases ownership of a product or service involved in an exchange. If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred.
    var broker: OrganizationOrPerson? { get set }
    /// A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
    var category: PhysicalActivityCategoryOrThingOrText? { get set }
    /// Indicates an OfferCatalog listing for this Organization, Person, or Service.
    /// - schema.org property name: hasOfferCatalog
    var offerCatalog: OfferCatalog? { get set }
    /// The hours during which this service or contact is available.
    var hoursAvailable: [OpeningHoursSpecification]? { get set }
    /// A pointer to another, somehow related product (or multiple products).
    /// - schema.org property name: isRelatedTo
    var relatedTo: [ProductOrService]? { get set }
    ///A pointer to another, functionally similar product (or multiple products).
    /// - schema.org property name: isSimilarTo
    var similarTo: [ProductOrService]? { get set }
    /// An associated logo.
    var logo: ImageObjectOrURL? { get set }
    /// An offer to provide this item—for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event.
    var offers: [Offer]? { get set }
    /// The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
    var provider: OrganizationOrPerson? { get set }
    /// Indicates the mobility of a provided service (e.g. 'static', 'dynamic').
    var providerMobility: String? { get set }
    /// A review of the item.
    /// - schema.org property name: review
    var reviews: [Review]? { get set }
    /// The tangible thing generated by the service, e.g. a passport, permit, etc.
    var serviceOutput: Thing? { get set }
    /// The type of service being offered, e.g. veterans' benefits, emergency relief, etc.
    var serviceType: String? { get set }
    /// Human-readable terms of service documentation.
    var termsOfService: String? { get set }
}
