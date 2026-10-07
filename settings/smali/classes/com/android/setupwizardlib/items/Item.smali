.class public Lcom/android/setupwizardlib/items/Item;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "Item.java"


# instance fields
.field private mEnabled:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLayoutRes:I

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    .line 44
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getDefaultLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/items/Item;->mLayoutRes:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    .line 49
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_enabled:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/setupwizardlib/items/Item;->mEnabled:Z

    .line 51
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/items/Item;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 52
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/items/Item;->mTitle:Ljava/lang/CharSequence;

    .line 53
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_summary:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/items/Item;->mSummary:Ljava/lang/CharSequence;

    .line 54
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_layout:I

    .line 55
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getDefaultLayoutResource()I

    move-result v3

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/setupwizardlib/items/Item;->mLayoutRes:I

    .line 56
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_visible:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    .line 57
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    .line 61
    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_default:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/setupwizardlib/items/Item;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/setupwizardlib/items/Item;->mLayoutRes:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/items/Item;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/setupwizardlib/items/Item;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewId()I
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getId()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->mVisible:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 139
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    .local v0, "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_items_summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 143
    .local v1, "summaryView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 144
    .local v2, "summary":Ljava/lang/CharSequence;
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_0
    sget v5, Lcom/android/setupwizardlib/R$id;->suw_items_icon_container:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 152
    .local v5, "iconContainer":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 153
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 154
    sget v3, Lcom/android/setupwizardlib/R$id;->suw_items_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 157
    .local v3, "iconView":Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p0, v3, v6}, Lcom/android/setupwizardlib/items/Item;->onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .end local v3
    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :goto_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getViewId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    .line 166
    return-void
.end method

.method protected onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 175
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 176
    return-void
.end method
