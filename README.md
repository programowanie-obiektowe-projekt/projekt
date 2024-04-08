# Cracking-Enigma - App for encrypting files

### ERD Diagram
``` mermaid
erDiagram
    ShoppingList ||--o{ ShoppingListItem : has
    ShoppingList {
	    string listId
        string name
        string userId
    }
	
	ShoppingListItem {
		string itemId
		string listId
		string name
		string quantity
	}

    User ||--|{ ShoppingList : contains
    User {
        string userId
        string username
        string password
        string email
    }
    

```