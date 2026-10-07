.class public Lcom/android/settings/widget/RadioButtonPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    const v0, 0x7f040129

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    .line 49
    const v0, 0x7f0d0159

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 50
    const v0, 0x7f0d0142

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setLayoutResource(I)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setIconSpaceReserved(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 79
    const v0, 0x7f0a0417

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "summaryContainer":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    nop

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    .line 81
    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_1
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, "title":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 88
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    :cond_2
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    .line 65
    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    .line 66
    return-void
.end method
