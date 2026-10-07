.class public Lcom/android/settings/network/ApnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mAllowAddingApns:Z

.field private mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

.field private mHideApnsWithIccidRule:[Ljava/lang/String;

.field private mHideApnsWithRule:[Ljava/lang/String;

.field private mHideImsApn:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/android/settings/network/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$1;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .line 73
    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    .line 73
    sget-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 73
    sput-boolean p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/network/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/network/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/ApnSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p1, "x1"    # I

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/network/ApnSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;

    .line 73
    iget v0, p0, Lcom/android/settings/network/ApnSettings;->mSubId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/network/ApnSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Lcom/android/settings/network/ApnSettings;->mSubId:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/network/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .line 73
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/network/ApnSettings;I)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/network/ApnSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p1, "x1"    # I

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/ApnSettings;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings/network/ApnPreference;
    .param p4, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p5, "mvnoType"    # Ljava/lang/String;
    .param p6, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/network/ApnPreference;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 401
    .local p2, "mnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local p3, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iput-object p5, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 406
    iput-object p6, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_1
    :goto_0
    return-void
.end method

.method private addNewApn()V
    .locals 4

    .line 589
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 590
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    .line 591
    :cond_0
    const/4 v1, -0x1

    .line 592
    .local v1, "subId":I
    :goto_0
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 594
    const-string v2, "mvno_type"

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method private appendFilter(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "where"    # Ljava/lang/StringBuilder;

    .line 414
    const/4 v0, 0x1

    .line 415
    .local v0, "includeCommon":Z
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    const-string v3, "include_common_rules"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 423
    const-string v1, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn hidden rules specified iccid, include common rule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 425
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 426
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/Utils;->carrierTableFieldValidate(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 427
    iget-object v5, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    invoke-virtual {v5, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " <> \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .end local v4
    .end local v5
    :cond_0
    goto :goto_0

    .line 446
    .end local v1
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithIccidRule:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 447
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithIccidRule:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnSettings;->getApnRuleMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 448
    .local v1, "ruleWithIccid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "iccid":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnSettings;->isOperatorIccid(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 450
    const-string v4, "include_common_rules"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 451
    .local v4, "s":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    nop

    :cond_4
    :goto_2
    move v0, v2

    .line 452
    const-string v2, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apn hidden rules in iccids, include common rule: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0, v1, p1}, Lcom/android/settings/network/ApnSettings;->filterWithKey(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 457
    .end local v1
    .end local v3
    .end local v4
    :cond_5
    if-eqz v0, :cond_6

    .line 464
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithRule:[Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 465
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithRule:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnSettings;->getApnRuleMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 466
    .local v1, "rule":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/settings/network/ApnSettings;->filterWithKey(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 469
    .end local v1
    :cond_6
    return-void
.end method

.method private fillList()V
    .locals 37

    .line 291
    move-object/from16 v14, p0

    const-string v0, "phone"

    invoke-virtual {v14, v0}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 292
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    iget-object v0, v14, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object v0, v14, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    .line 293
    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v13, v0

    .line 294
    .local v13, "subId":I
    iget-object v0, v14, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v15, v13}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v12, v0

    .line 295
    .local v12, "mccmnc":Ljava/lang/String;
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mccmnc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL)) AND user_visible!=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 299
    .local v11, "where":Ljava/lang/StringBuilder;
    iget-boolean v0, v14, Lcom/android/settings/network/ApnSettings;->mHideImsApn:Z

    if-eqz v0, :cond_2

    .line 300
    const-string v0, " AND NOT (type=\'ims\')"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    invoke-direct {v14, v11}, Lcom/android/settings/network/ApnSettings;->appendFilter(Ljava/lang/StringBuilder;)V

    .line 305
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v16, "_id"

    const-string v17, "name"

    const-string v18, "apn"

    const-string v19, "type"

    const-string v20, "mvno_type"

    const-string v21, "mvno_match_data"

    const-string v22, "bearer"

    const-string v23, "bearer_bitmask"

    filled-new-array/range {v16 .. v23}, [Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "name ASC"

    .line 307
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 311
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_f

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, v14, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v14, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_3

    .line 314
    iget-object v1, v14, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 315
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 314
    invoke-virtual {v1, v2, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 317
    .end local v0
    .local v16, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    move-object/from16 v16, v0

    const-string v0, "apn_list"

    invoke-virtual {v14, v0}, Lcom/android/settings/network/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/preference/PreferenceGroup;

    .line 318
    .local v6, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v2, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 322
    .local v5, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v9, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v10, "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 329
    iget-object v0, v14, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/ApnPreference;->setSelectedKey(Ljava/lang/String;)V

    .line 330
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 331
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_c

    .line 332
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "apn":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "key":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "type":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 337
    .local v17, "mvnoType":Ljava/lang/String;
    const/4 v7, 0x5

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 340
    .local v18, "mvnoMatchData":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v27, v0

    move-object/from16 v26, v11

    const/4 v11, 0x1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0
    .end local v11
    .local v26, "where":Ljava/lang/StringBuilder;
    .local v27, "name":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/settings/Utils;->getLocalizedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "localizedName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 343
    move-object v0, v7

    .end local v27
    .restart local v0
    goto :goto_3

    .line 345
    .end local v0
    .restart local v27
    :cond_4
    move-object/from16 v0, v27

    .end local v27
    .restart local v0
    :goto_3
    const/4 v11, 0x6

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 346
    .local v11, "bearer":I
    move-object/from16 v29, v6

    const/4 v6, 0x7

    .end local v6
    .local v29, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 347
    .local v19, "bearerBitMask":I
    invoke-static {v11}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v6

    or-int v6, v6, v19

    .line 348
    .local v6, "fullBearer":I
    move-object/from16 v30, v7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 349
    .end local v7
    .local v30, "localizedName":Ljava/lang/String;
    invoke-virtual {v7, v13}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v7

    .line 348
    invoke-direct {v14, v7}, Lcom/android/settings/network/ApnSettings;->networkTypeToRilRidioTechnology(I)I

    move-result v7

    .line 350
    .local v7, "radioTech":I
    invoke-static {v6, v7}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v20

    if-nez v20, :cond_7

    if-nez v11, :cond_5

    if-eqz v19, :cond_7

    .line 353
    :cond_5
    if-nez v7, :cond_6

    if-nez v11, :cond_7

    if-nez v7, :cond_7

    .line 355
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 356
    nop

    .line 331
    move-object/from16 v11, v26

    move-object/from16 v6, v29

    const/4 v7, 0x1

    goto :goto_2

    .line 359
    :cond_7
    move/from16 v31, v6

    new-instance v6, Lcom/android/settings/network/ApnPreference;

    .end local v6
    .local v31, "fullBearer":I
    move/from16 v32, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    .end local v7
    .local v32, "radioTech":I
    invoke-direct {v6, v7}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;)V

    move-object v7, v6

    .line 361
    .local v7, "pref":Lcom/android/settings/network/ApnPreference;
    invoke-virtual {v7, v3}, Lcom/android/settings/network/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v7, v0}, Lcom/android/settings/network/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v7, v4}, Lcom/android/settings/network/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Lcom/android/settings/network/ApnPreference;->setPersistent(Z)V

    .line 365
    invoke-virtual {v7, v14}, Lcom/android/settings/network/ApnPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    invoke-virtual {v7, v13}, Lcom/android/settings/network/ApnPreference;->setSubId(I)V

    .line 368
    if-eqz v1, :cond_9

    const-string v6, "mms"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    const/16 v33, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v33, 0x1

    :goto_5
    move/from16 v6, v33

    .line 369
    .local v6, "selectable":Z
    invoke-virtual {v7, v6}, Lcom/android/settings/network/ApnPreference;->setSelectable(Z)V

    .line 370
    if-eqz v6, :cond_b

    .line 371
    move-object/from16 v34, v0

    iget-object v0, v14, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .end local v0
    .local v34, "name":Ljava/lang/String;
    if-eqz v0, :cond_a

    iget-object v0, v14, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 372
    invoke-virtual {v7}, Lcom/android/settings/network/ApnPreference;->setChecked()V

    .line 374
    :cond_a
    move-object/from16 v27, v34

    move-object v0, v14

    .end local v34
    .restart local v27
    move-object/from16 v20, v1

    move-object v1, v7

    .end local v1
    .local v20, "type":Ljava/lang/String;
    move-object/from16 v21, v3

    move-object v3, v5

    .end local v3
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v22, v4

    move-object/from16 v4, v16

    .end local v4
    .local v22, "apn":Ljava/lang/String;
    move-object/from16 v35, v15

    move-object v15, v5

    move-object/from16 v5, v17

    .end local v5
    .local v15, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v35, "tm":Landroid/telephony/TelephonyManager;
    move/from16 v24, v6

    move-object/from16 v36, v29

    move/from16 v23, v31

    move-object/from16 v6, v18

    .end local v6
    .end local v29
    .end local v31
    .local v23, "fullBearer":I
    .local v24, "selectable":Z
    .local v36, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/network/ApnSettings;->addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    move-object v3, v7

    move-object v5, v8

    move/from16 v25, v11

    move/from16 v28, v13

    move-object/from16 v6, v26

    move-object/from16 v0, v30

    move/from16 v1, v32

    const/4 v4, 0x1

    move-object/from16 v26, v12

    goto :goto_6

    .line 376
    .end local v20
    .end local v21
    .end local v22
    .end local v23
    .end local v24
    .end local v27
    .end local v35
    .end local v36
    .restart local v0
    .restart local v1
    .restart local v3
    .restart local v4
    .restart local v5
    .restart local v6
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    .restart local v29
    .restart local v31
    :cond_b
    move-object/from16 v27, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v24, v6

    move-object/from16 v35, v15

    move-object/from16 v36, v29

    move/from16 v23, v31

    move-object v15, v5

    .end local v0
    .end local v1
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v29
    .end local v31
    .local v15, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .restart local v20
    .restart local v21
    .restart local v22
    .restart local v23
    .restart local v24
    .restart local v27
    .restart local v35
    .restart local v36
    move-object v3, v7

    move-object/from16 v0, v30

    move/from16 v1, v32

    const/4 v4, 0x1

    move-object v7, v14

    .end local v7
    .end local v30
    .end local v32
    .local v0, "localizedName":Ljava/lang/String;
    .local v1, "radioTech":I
    .local v3, "pref":Lcom/android/settings/network/ApnPreference;
    move-object v5, v8

    move-object v8, v3

    .end local v8
    .local v5, "cursor":Landroid/database/Cursor;
    move/from16 v25, v11

    move-object/from16 v6, v26

    move-object/from16 v11, v16

    .end local v11
    .end local v26
    .local v6, "where":Ljava/lang/StringBuilder;
    .local v25, "bearer":I
    move-object/from16 v26, v12

    move-object/from16 v12, v17

    .end local v12
    .local v26, "mccmnc":Ljava/lang/String;
    move/from16 v28, v13

    move-object/from16 v13, v18

    .end local v13
    .local v28, "subId":I
    invoke-direct/range {v7 .. v13}, Lcom/android/settings/network/ApnSettings;->addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 379
    .end local v0
    .end local v1
    .end local v3
    .end local v17
    .end local v18
    .end local v19
    .end local v20
    .end local v21
    .end local v22
    .end local v23
    .end local v24
    .end local v25
    .end local v27
    nop

    .line 331
    move v7, v4

    move-object v8, v5

    move-object v11, v6

    move-object v5, v15

    move-object/from16 v12, v26

    move/from16 v13, v28

    move-object/from16 v15, v35

    move-object/from16 v6, v36

    goto/16 :goto_2

    .line 380
    .end local v26
    .end local v28
    .end local v35
    .end local v36
    .local v5, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .local v6, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v8
    .local v11, "where":Ljava/lang/StringBuilder;
    .restart local v12
    .restart local v13
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    :cond_c
    move-object/from16 v36, v6

    move-object v6, v11

    move-object/from16 v26, v12

    move/from16 v28, v13

    move-object/from16 v35, v15

    move-object v15, v5

    move-object v5, v8

    .end local v8
    .end local v11
    .end local v12
    .end local v13
    .local v5, "cursor":Landroid/database/Cursor;
    .local v6, "where":Ljava/lang/StringBuilder;
    .local v15, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    .restart local v26
    .restart local v28
    .restart local v35
    .restart local v36
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 382
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 383
    move-object v0, v15

    .line 384
    .end local v2
    .local v0, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    move-object v1, v10

    .end local v9
    .local v1, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/network/ApnPreference;>;"
    goto :goto_7

    .line 389
    .end local v0
    .end local v1
    .restart local v2
    .restart local v9
    :cond_d
    move-object v0, v2

    move-object v1, v9

    .end local v2
    .end local v9
    .restart local v0
    .restart local v1
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    .line 390
    .local v3, "preference":Landroid/support/v7/preference/Preference;
    move-object/from16 v4, v36

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 391
    .end local v3
    .end local v36
    .local v4, "apnList":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_8

    .line 392
    .end local v4
    .restart local v36
    :cond_e
    move-object/from16 v4, v36

    .end local v36
    .restart local v4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    .line 393
    .restart local v3
    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 394
    .end local v3
    goto :goto_9

    .line 396
    .end local v0
    .end local v1
    .end local v4
    .end local v5
    .end local v6
    .end local v10
    .end local v16
    .end local v26
    .end local v28
    .end local v35
    .restart local v8
    .restart local v11
    .restart local v12
    .restart local v13
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    :cond_f
    move-object v5, v8

    move-object v6, v11

    move-object/from16 v26, v12

    move/from16 v28, v13

    move-object/from16 v35, v15

    .end local v8
    .end local v11
    .end local v12
    .end local v13
    .end local v15
    .restart local v5
    .restart local v6
    .restart local v26
    .restart local v28
    .restart local v35
    :cond_10
    return-void
.end method

.method private filterWithKey(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p2, "where"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 472
    .local p1, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 473
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, "field":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/Utils;->carrierTableFieldValidate(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 476
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 477
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "subValues":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 479
    .local v7, "subValue":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " <> \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .end local v7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 483
    .end local v2
    .end local v3
    .end local v4
    :cond_0
    goto :goto_0

    .line 484
    :cond_1
    return-void
.end method

.method private getApnRuleMap([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "ruleArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 488
    .local v0, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 489
    array-length v1, p1

    .line 490
    .local v1, "length":I
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ruleArray size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-lez v1, :cond_0

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 492
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 493
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 498
    .end local v1
    .end local v2
    :cond_0
    return-object v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 172
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 174
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    .line 176
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 7

    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "name ASC"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 633
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 634
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 635
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 637
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 638
    return-object v0
.end method

.method private getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p1, "subId"    # I

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method private getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 665
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    .line 666
    :cond_0
    const/4 v0, -0x1

    .line 667
    .local v0, "subId":I
    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 670
    :cond_1
    return-object p1
.end method

.method private isOperatorIccid(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 7
    .param p2, "iccid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 502
    .local p1, "ruleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "iccid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 503
    .local v0, "valuesOfIccid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 504
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "iccids":[Ljava/lang/String;
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 506
    .local v5, "subIccid":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 507
    const/4 v2, 0x1

    return v2

    .line 505
    .end local v5
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 511
    .end local v1
    :cond_1
    return v2
.end method

.method private networkTypeToRilRidioTechnology(I)I
    .locals 1
    .param p1, "nt"    # I

    .line 515
    packed-switch p1, :pswitch_data_0

    .line 553
    :pswitch_0    # 0xb
    const/4 v0, 0x0

    return v0

    .line 551
    :pswitch_1    # 0x13
    const/16 v0, 0x13

    return v0

    .line 549
    :pswitch_2    # 0x12
    const/16 v0, 0x12

    return v0

    .line 547
    :pswitch_3    # 0x11
    const/16 v0, 0x11

    return v0

    .line 545
    :pswitch_4    # 0x10
    const/16 v0, 0x10

    return v0

    .line 543
    :pswitch_5    # 0xf
    const/16 v0, 0xf

    return v0

    .line 539
    :pswitch_6    # 0xe
    const/16 v0, 0xd

    return v0

    .line 541
    :pswitch_7    # 0xd
    const/16 v0, 0xe

    return v0

    .line 537
    :pswitch_8    # 0xc
    const/16 v0, 0xc

    return v0

    .line 527
    :pswitch_9    # 0xa
    const/16 v0, 0xb

    return v0

    .line 525
    :pswitch_a    # 0x9
    const/16 v0, 0xa

    return v0

    .line 523
    :pswitch_b    # 0x8
    const/16 v0, 0x9

    return v0

    .line 531
    :pswitch_c    # 0x7
    const/4 v0, 0x6

    return v0

    .line 535
    :pswitch_d    # 0x6
    const/16 v0, 0x8

    return v0

    .line 533
    :pswitch_e    # 0x5
    const/4 v0, 0x7

    return v0

    .line 529
    :pswitch_f    # 0x4
    const/4 v0, 0x5

    return v0

    .line 521
    :pswitch_10    # 0x3
    const/4 v0, 0x3

    return v0

    .line 519
    :pswitch_11    # 0x2
    const/4 v0, 0x2

    return v0

    .line 517
    :pswitch_12    # 0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12    # 0x1
        :pswitch_11    # 0x2
        :pswitch_10    # 0x3
        :pswitch_f    # 0x4
        :pswitch_e    # 0x5
        :pswitch_d    # 0x6
        :pswitch_c    # 0x7
        :pswitch_b    # 0x8
        :pswitch_a    # 0x9
        :pswitch_9    # 0xa
        :pswitch_0    # 0xb
        :pswitch_8    # 0xc
        :pswitch_7    # 0xd
        :pswitch_6    # 0xe
        :pswitch_5    # 0xf
        :pswitch_4    # 0x10
        :pswitch_3    # 0x11
        :pswitch_2    # 0x12
        :pswitch_1    # 0x13
    .end packed-switch
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .line 642
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->showDialog(I)V

    .line 643
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 645
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 646
    new-instance v1, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 651
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Restore default APN Handler: Process Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 653
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 654
    new-instance v1, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 655
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    .line 658
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    .line 659
    invoke-virtual {v1, v0}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 660
    return v0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 620
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 623
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 624
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    sget-object v2, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 626
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 736
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 737
    const/16 v0, 0x243

    return v0

    .line 739
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 182
    const/16 v0, 0xc

    return v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 278
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    .line 279
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    sget-object v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v1

    .line 283
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 227
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12010f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    .line 231
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->setHasOptionsMenu(Z)V

    .line 232
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 233
    const v0, 0x7f150083

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->addPreferencesFromResource(I)V

    .line 234
    return-void

    .line 237
    :cond_0
    const v0, 0x7f150012

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->addPreferencesFromResource(I)V

    .line 238
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sub_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/network/ApnSettings;->mSubId:I

    .line 192
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 195
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 197
    iget v1, p0, Lcom/android/settings/network/ApnSettings;->mSubId:I

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnSettings;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 198
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 200
    const-string v1, "carrier_config"

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 202
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    iget v2, p0, Lcom/android/settings/network/ApnSettings;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 203
    .local v2, "b":Landroid/os/PersistableBundle;
    const-string v3, "hide_ims_apn_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/network/ApnSettings;->mHideImsApn:Z

    .line 204
    const-string v3, "allow_adding_apns_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    .line 206
    const-string v3, "apn_hide_rule_strings_array"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithRule:[Ljava/lang/String;

    .line 207
    const-string v3, "apn_hide_rule_strings_with_iccids_array"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsWithIccidRule:[Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "iccid":Ljava/lang/String;
    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    .line 213
    .end local v3
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    if-eqz v3, :cond_1

    .line 214
    const-string v3, "read_only_apn_types_string_array"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "readOnlyApnTypes":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    const-string v4, "ApnSettings"

    const-string v5, "not allowing adding APN because all APN types are read only"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    .line 222
    .end local v3
    :cond_1
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 223
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .line 721
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 722
    new-instance v0, Lcom/android/settings/network/ApnSettings$2;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/ApnSettings$2;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;)V

    .line 727
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120bda

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 728
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 729
    return-object v0

    .line 731
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 559
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_1

    .line 560
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 561
    nop

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1208c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f08019f

    .line 563
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 564
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 566
    :cond_0
    const/4 v0, 0x2

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1208c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    .line 568
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 571
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 572
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 268
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 270
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 273
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 576
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 585
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 582
    :pswitch_0    # 0x2
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->restoreDefaultApn()Z

    .line 583
    return v1

    .line 578
    :pswitch_1    # 0x1
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->addNewApn()V

    .line 579
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 257
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 609
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 613
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 616
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 602
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 603
    .local v0, "pos":I
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 604
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 605
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 3

    .line 242
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 244
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->fillList()V

    .line 253
    :cond_1
    return-void
.end method
