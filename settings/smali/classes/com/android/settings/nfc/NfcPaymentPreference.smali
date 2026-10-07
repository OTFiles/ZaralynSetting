.class public Lcom/android/settings/nfc/NfcPaymentPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mSettingsButtonView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/nfc/PaymentBackend;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 56
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p2, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    .line 58
    new-instance v0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    .line 59
    const v0, 0x7f120915

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 61
    const v0, 0x7f0d0154

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->setWidgetLayoutResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->refresh()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcPaymentPreference;

    .line 40
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/PaymentBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcPaymentPreference;

    .line 40
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 70
    const v0, 0x7f0a03c3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 111
    .local v0, "defaultAppInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "settingsIntent":Landroid/content/Intent;
    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "NfcPaymentPreference"

    const-string v4, "Settings activity not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v1
    .end local v2
    :cond_0
    :goto_0
    return-void
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->refresh()V

    .line 106
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    return-void
.end method

.method public refresh()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v1

    .line 82
    .local v1, "defaultApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 84
    .local v2, "apps":[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-virtual {v3, v2, v1}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 86
    .end local v2
    :cond_0
    const v2, 0x7f12090f

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcPaymentPreference;->setTitle(I)V

    .line 87
    if-eqz v1, :cond_1

    .line 88
    iget-object v2, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f120910

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 93
    return-void
.end method

.method updateSettingsVisibility()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 126
    .local v0, "defaultApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .end local v0
    goto :goto_1

    .line 127
    .restart local v0
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    .end local v0
    :cond_2
    :goto_1
    return-void
.end method
