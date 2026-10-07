.class public Lcom/android/settings/datausage/CellDataPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CellDataPreference$CellDataState;,
        Lcom/android/settings/datausage/CellDataPreference$DataStateListener;
    }
.end annotation


# instance fields
.field public mChecked:Z

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public mSubId:I

.field mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    const v0, 0x7f0401a3

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 187
    new-instance v0, Lcom/android/settings/datausage/CellDataPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/CellDataPreference$1;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 199
    new-instance v0, Lcom/android/settings/datausage/CellDataPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/CellDataPreference$2;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/CellDataPreference;

    .line 47
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/CellDataPreference;

    .line 47
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    return-void
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 151
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 152
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->notifyChanged()V

    .line 154
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    .line 148
    return-void
.end method

.method private showDisableDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 173
    const v2, 0x7f12047f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    const v2, 0x104000a

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 175
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    return-void
.end method

.method private updateChecked()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    .line 123
    return-void
.end method

.method private updateEnabled()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setEnabled(Z)V

    .line 129
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .line 86
    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onAttached()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 158
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 159
    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "switchView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 161
    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 162
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 180
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 185
    return-void
.end method

.method public onDetached()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onDetached()V

    .line 101
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/CellDataPreference;->showDisableDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "s"    # Landroid/os/Parcelable;

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    .line 66
    .local v0, "state":Lcom/android/settings/datausage/CellDataPreference$CellDataState;
    invoke-virtual {v0}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settingslib/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    iget-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    iput-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 69
    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 70
    iget v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    iput v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->notifyChanged()V

    .line 74
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 78
    new-instance v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;-><init>(Landroid/os/Parcelable;)V

    .line 79
    .local v0, "state":Lcom/android/settings/datausage/CellDataPreference$CellDataState;
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    .line 80
    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    iput v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    .line 81
    return-object v0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 135
    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/16 v4, 0xb2

    invoke-virtual {v1, v0, v4, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 136
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 141
    :goto_0
    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "services"    # Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 105
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 113
    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    if-ne v1, v0, :cond_0

    .line 114
    iput p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    .line 119
    return-void

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CellDataPreference needs a SubscriptionInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
