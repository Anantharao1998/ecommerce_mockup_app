/// Menu Item model
class MenuItem {
  /// Menu Item model

  MenuItem({required this.name, required this.thumbnail});

  /// Menu Item's name
  final String name;

  /// Menu Item's thumbnail
  final String thumbnail;

  @override
  String toString() => "MenuItem(name: $name, thumbnail: $thumbnail)";
}
