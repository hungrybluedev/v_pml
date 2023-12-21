module pml

pub type Child = Comment | Node | string

pub type CommentChild = Comment | string

pub struct Comment {
	content []CommentChild
}

pub type AttributeChild = Attribute | Comment

pub struct Attribute {
	name  string
	value string
}

pub struct Attributes {
	contents []AttributeChild
}

pub fn (attributes Attributes) == (other Attributes) bool {
	// TODO: Handle cases when attributes are out of order
	// TODO: Decide hadling of comments in attributes
	return attributes.contents == other.contents
}

pub struct Node {
	name       string     @[required]
	attributes Attributes
	children   []Child
}

pub struct PMLDoc {
	root Node
}
