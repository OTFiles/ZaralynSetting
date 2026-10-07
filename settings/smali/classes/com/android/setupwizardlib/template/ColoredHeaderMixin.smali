.class public Lcom/android/setupwizardlib/template/ColoredHeaderMixin;
.super Lcom/android/setupwizardlib/template/HeaderMixin;
.source "ColoredHeaderMixin.java"


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "layout"    # Lcom/android/setupwizardlib/TemplateLayout;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/template/HeaderMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwColoredHeaderMixin:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwColoredHeaderMixin_suwHeaderColor:I

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 46
    .local v1, "headerColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method


# virtual methods
.method public getColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 71
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 60
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 61
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 64
    :cond_0
    return-void
.end method
