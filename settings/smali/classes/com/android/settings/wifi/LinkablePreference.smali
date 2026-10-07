.class public Lcom/android/settings/wifi/LinkablePreference;
.super Landroid/support/v7/preference/Preference;
.source "LinkablePreference.java"


# instance fields
.field private mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 58
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    if-nez v2, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    .local v2, "contentBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 70
    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 74
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-static {v0, v2, v3}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    move-result v3

    .line 75
    .local v3, "linked":Z
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 77
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    .line 78
    .local v4, "boldSpan":Landroid/text/Spannable;
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/LinkablePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030044

    invoke-direct {v5, v6, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 82
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x11

    .line 78
    invoke-interface {v4, v5, v1, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 84
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 87
    .end local v4
    :cond_3
    return-void

    .line 65
    .end local v2
    .end local v3
    :cond_4
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V
    .locals 0
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;
    .param p3, "clickListener"    # Lcom/android/settings/LinkifyUtils$OnClickListener;

    .line 99
    iput-object p1, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 100
    iput-object p2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 101
    iput-object p3, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    .line 103
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 112
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 114
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 122
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 123
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method
