.class public Lcom/android/setupwizardlib/items/ButtonBarItem;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "ButtonBarItem.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;


# instance fields
.field private final mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/setupwizardlib/items/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mButtons:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mVisible:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mButtons:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mVisible:Z

    .line 60
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 2
    .param p1, "child"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 108
    instance-of v0, p1, Lcom/android/setupwizardlib/items/ButtonItem;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mButtons:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lcom/android/setupwizardlib/items/ButtonItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add non-button item to Button Bar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ButtonBarItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 75
    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_button_bar:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ButtonBarItem;->getId()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mVisible:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 95
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 98
    iget-object v1, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/items/ButtonItem;

    .line 99
    .local v2, "buttonItem":Lcom/android/setupwizardlib/items/ButtonItem;
    invoke-virtual {v2, v0}, Lcom/android/setupwizardlib/items/ButtonItem;->createButton(Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v3

    .line 100
    .local v3, "button":Landroid/widget/Button;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    .end local v2
    .end local v3
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ButtonBarItem;->getViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 104
    return-void
.end method
