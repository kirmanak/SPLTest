#include <stdlib.h>

//описали двоичное дерево на с
struct node{
	struct node* first_child;
	struct node* second_child;
	int value;
};

void foreach(struct node* root, int(*func)(int) ){
	root->value = func(root->value);
	foreach (root->first_child, func);
	foreach (root->second_child, func);
}

void copy_tree(struct node* root, struct node* new_root){
	if (root != NULL){
		if (new_root != NULL)
			new_root->value = root->value;
		else 
			new_root = (struct node*)malloc (sizeof(struct node));
		if (root->first_child != NULL){
			struct node* new_child = (struct node*)malloc (sizeof(struct node));
			new_root->first_child = new_child;
			copy_tree(root->first_child, new_child);
		} 
		else 
			new_root->first_child = NULL;
		if (root->second_child != NULL){
			struct node* new_child = (struct node*)malloc (sizeof(struct node));
			new_root->second_child = new_child;
			copy_tree(root->second_child, new_child);
		} 
		else 
			new_root->second_child = NULL;
	
	} 
	else {
		free(new_root);
		new_root = NULL;
	}
}

struct node* map(struct node* root, int(*func)(int)){
	
	struct node* new_root = (struct node*)malloc(sizeof(struct node));
	copy_tree(root, new_root);
	foreach(new_root, func);
	
	return new_root;
}
