.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v0}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/nfc/PaymentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 51
    const/16 v0, 0x46

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 56
    const v0, 0x7f150075

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 70
    new-instance v2, Lcom/android/settings/nfc/NfcPaymentPreference;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v2, v3, v4}, Lcom/android/settings/nfc/NfcPaymentPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V

    .line 72
    .local v2, "preference":Lcom/android/settings/nfc/NfcPaymentPreference;
    const-string v3, "payment"

    invoke-virtual {v2, v3}, Lcom/android/settings/nfc/NfcPaymentPreference;->setKey(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 74
    new-instance v3, Lcom/android/settings/nfc/NfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/nfc/NfcForegroundPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V

    .line 76
    .local v3, "foreground":Lcom/android/settings/nfc/NfcForegroundPreference;
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 78
    .end local v2
    .end local v3
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 105
    const v0, 0x7f120913

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 106
    .local v0, "menuItem":Landroid/view/MenuItem;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/nfc/HowItWorks;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v1, "howItWorksIntent":Landroid/content/Intent;
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 108
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->onPause()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->onResume()V

    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00f4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "emptyView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentSettings;->setEmptyView(Landroid/view/View;)V

    .line 88
    return-void
.end method
