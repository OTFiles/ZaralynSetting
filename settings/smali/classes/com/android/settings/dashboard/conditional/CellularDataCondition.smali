.class public Lcom/android/settings/dashboard/conditional/CellularDataCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "CellularDataCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;
    }
.end annotation


# static fields
.field private static final DATA_CONNECTION_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mReceiver:Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->DATA_CONNECTION_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 35
    new-instance v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;

    .line 36
    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->DATA_CONNECTION_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 101
    const/16 v0, 0x17c

    return v0
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 3
    .param p1, "index"    # I

    .line 89
    if-nez p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 92
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    .line 94
    .end local v0
    nop

    .line 97
    return-void

    .line 95
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
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public refreshState()V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 43
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    .line 49
    return-void

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    .line 46
    return-void
.end method
