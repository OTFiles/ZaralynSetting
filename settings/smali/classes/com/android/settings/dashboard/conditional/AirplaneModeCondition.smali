.class public Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "AirplaneModeCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;
    }
.end annotation


# static fields
.field private static final AIRPLANE_MODE_FILTER:Landroid/content/IntentFilter;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final mReceiver:Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "APM_Condition"

    sput-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->AIRPLANE_MODE_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 1
    .param p1, "conditionManager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 41
    new-instance v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;

    .line 42
    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->AIRPLANE_MODE_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 105
    const/16 v0, 0x179

    return v0
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 3
    .param p1, "index"    # I

    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->setActive(Z)V

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPrimaryClick()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public refreshState()V
    .locals 2

    .line 46
    sget-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->TAG:Ljava/lang/String;

    const-string v1, "APM condition refreshed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->setActive(Z)V

    .line 48
    return-void
.end method

.method protected setActive(Z)V
    .locals 3
    .param p1, "active"    # Z

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;->setActive(Z)V

    .line 68
    sget-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActive was called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
