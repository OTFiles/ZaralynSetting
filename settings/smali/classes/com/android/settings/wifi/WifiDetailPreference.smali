.class public Lcom/android/settings/wifi/WifiDetailPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiDetailPreference.java"


# instance fields
.field private mDetailText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const v0, 0x7f0d015d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setWidgetLayoutResource(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 49
    const v0, 0x7f0a04e9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52
    return-void
.end method

.method public setDetailText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDetailPreference;->notifyChanged()V

    .line 44
    return-void
.end method
