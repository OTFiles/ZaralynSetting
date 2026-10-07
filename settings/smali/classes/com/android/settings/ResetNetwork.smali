.class public Lcom/android/settings/ResetNetwork;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetwork.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEsimCheckbox:Landroid/widget/CheckBox;

.field private mEsimContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mSubscriptionSpinner:Landroid/widget/Spinner;

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 136
    new-instance v0, Lcom/android/settings/ResetNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetwork$1;-><init>(Lcom/android/settings/ResetNetwork;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetNetwork;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetwork;
    .param p1, "x1"    # I

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ResetNetwork;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetNetwork;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ResetNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetwork;

    .line 66
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 13

    .line 159
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    .line 160
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    .line 164
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 166
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 167
    .local v0, "defaultSubscription":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 170
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 173
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 174
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 177
    :cond_2
    const/4 v3, 0x0

    .line 178
    .local v3, "selectedIndex":I
    iget-object v4, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 179
    .local v4, "size":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v5, "subscriptionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 181
    .local v7, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    if-ne v9, v0, :cond_3

    .line 183
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 185
    :cond_3
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 186
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 187
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 189
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 190
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 192
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 193
    const-string v10, "MCC:%s MNC:%s Slot:%s Id:%s"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    .line 194
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v8, 0x2

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v8, 0x3

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    .line 193
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 196
    :cond_6
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v7
    .end local v9
    goto :goto_0

    .line 198
    :cond_7
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v9, 0x1090008

    invoke-direct {v6, v7, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 200
    .local v6, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 201
    iget-object v7, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 202
    iget-object v7, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 203
    iget-object v7, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_8

    .line 204
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_8
    iget-object v7, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 208
    .end local v0
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :goto_1
    goto :goto_2

    .line 209
    :cond_9
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 211
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateButton:Landroid/widget/Button;

    .line 212
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ResetNetwork;->showEuiccSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 214
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    .local v0, "title":Landroid/widget/TextView;
    const v1, 0x7f120bcd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    new-instance v2, Lcom/android/settings/ResetNetwork$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetNetwork$2;-><init>(Lcom/android/settings/ResetNetwork;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    .end local v0
    goto :goto_3

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    :goto_3
    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/ResetNetwork;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "__"    # Landroid/content/DialogInterface;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 95
    const v2, 0x7f120bd6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 94
    invoke-virtual {v1, p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showEuiccSettings(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 229
    const-string v0, "euicc"

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 231
    .local v0, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 232
    return v2

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 235
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "euicc_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "development_settings_enabled"

    .line 236
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 235
    :goto_1
    return v2
.end method

.method private showFinalConfirmation()V
    .locals 5

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 119
    .local v1, "selectedIndex":I
    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 120
    .local v2, "subscription":Landroid/telephony/SubscriptionInfo;
    const-string v3, "subscription"

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    .end local v1
    .end local v2
    :cond_0
    const-string v1, "erase_esim"

    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/ResetNetworkConfirm;

    .line 124
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120bd0

    .line 126
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 129
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 264
    const/16 v0, 0x53

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 103
    return-void

    .line 108
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->showFinalConfirmation()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->establishInitialState()V

    .line 113
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120bd6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 243
    .local v0, "um":Landroid/os/UserManager;
    nop

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 243
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 245
    .local v1, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "no_network_reset"

    .line 246
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 245
    invoke-static {v2, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    if-eqz v1, :cond_1

    .line 249
    new-instance v2, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string v3, "no_network_reset"

    .line 250
    invoke-virtual {v2, v3, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/-$$Lambda$ResetNetwork$sNSFVrhYYO7NxbKY35cdb4I6sYI;

    invoke-direct {v3, p0}, Lcom/android/settings/-$$Lambda$ResetNetwork$sNSFVrhYYO7NxbKY35cdb4I6sYI;-><init>(Lcom/android/settings/ResetNetwork;)V

    .line 251
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 256
    :cond_1
    const v2, 0x7f0d017f

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    .line 258
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->establishInitialState()V

    .line 259
    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    return-object v2

    .line 247
    :cond_2
    :goto_0
    const v2, 0x7f0d00f2

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method
