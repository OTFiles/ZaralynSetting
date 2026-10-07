.class public Lcom/android/setupwizardlib/items/ExpandableSwitchItem;
.super Lcom/android/setupwizardlib/items/SwitchItem;
.source "ExpandableSwitchItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCollapsedSummary:Ljava/lang/CharSequence;

.field private mExpandedSummary:Ljava/lang/CharSequence;

.field private mIsExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    .line 58
    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem:[I

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem_suwCollapsedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    .line 61
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem_suwExpandedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private tintCompoundDrawables(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010036

    aput v3, v1, v2

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 157
    .local v1, "tintColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    if-eqz v1, :cond_3

    .line 160
    sget v3, Lcom/android/setupwizardlib/R$id;->suw_items_title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 161
    .local v3, "titleView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 162
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 163
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    .end local v7
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 166
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_3

    .line 167
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 168
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 169
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    .end local v6
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    .end local v3
    :cond_3
    return-void
.end method


# virtual methods
.method public getCollapsedSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    .line 67
    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_expandable_switch:I

    return v0
.end method

.method public getExpandedSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->getExpandedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->getCollapsedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 132
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/SwitchItem;->onBindView(Landroid/view/View;)V

    .line 133
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_expandable_switch_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    instance-of v1, v0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    if-eqz v1, :cond_0

    .line 137
    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setChecked(Z)V

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->tintCompoundDrawables(Landroid/view/View;)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 145
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 149
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->setExpanded(Z)V

    .line 150
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .line 86
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    if-ne v0, p1, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->notifyItemChanged()V

    .line 91
    return-void
.end method
