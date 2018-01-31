import Foundation

/// Enumerated for values for itemListOrder for indicating how an ordered ItemList is organized.
public enum ItemListOrder: String, ItemListOrderOrText {
    case ascending = "ItemListOrderAscending"
    case decending = "ItemListOrderDescending"
    case unordered = "ItemListUnordered"
}
