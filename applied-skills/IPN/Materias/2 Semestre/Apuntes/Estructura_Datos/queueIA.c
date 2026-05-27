#include<stdio.h>
#include<stdlib.h>

struct Node
{
    int dato;
    struct Node *next;
};

struct Node *front=NULL,*rear=NULL;

void EnQueue(int val)
{
    struct Node* newNode;
    newNode=(struct Node*)malloc(sizeof(struct Node));
    newNode->dato=val;
    newNode->next=NULL;

    if(front==NULL)
        front=rear=newNode;
    else
    {
        rear->next=newNode;
        rear=newNode;
    }
}

void DeQueue()
{
    if(front==NULL)
        printf("\nLa cola esta vacia\n");
    else
    {
        struct Node *temp=front;
        front=front->next;
        printf("\n Se elimino el valor: %d\n",temp->dato);
        free(temp);
    }
}

void print()
{
    if(front==NULL)
        printf("\nLa cola esta vacia\n");
    else
    {
        struct Node *temp=front;
        while(temp!= NULL)
        {
            printf("%d | ",temp->dato);
            temp=temp->next;
        }
        free(temp);
        //printf("%d \n",temp->dato);
    }

}

int main()
{
    int opc,val;
    while(1)
    {
        printf("\n****MENU****\n");
        printf("1. Enqueue\n2. Dequeue\n3.Print\n4.Salir");

        printf("Selecciona alguna opcion: ");
        scanf("%d",&opc);
        switch(opc)
        {
            case 1:
                printf("Valor: ");
                scanf("%d",&val);
                EnQueue(val);
                break;
            case 2:
                DeQueue();
                break;
            case 3:
                print();
                break;
            case 4:
                return 0;
            default:
                printf("\nOpcion no valida");
        }




    }


    return 0;
}