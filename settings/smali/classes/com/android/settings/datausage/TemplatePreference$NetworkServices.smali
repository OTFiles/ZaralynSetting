.class public Lcom/android/settings/datausage/TemplatePreference$NetworkServices;
.super Ljava/lang/Object;
.source "TemplatePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/TemplatePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkServices"
.end annotation


# instance fields
.field public mNetworkService:Landroid/os/INetworkManagementService;

.field public mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field public mPolicyManager:Landroid/net/NetworkPolicyManager;

.field public mStatsService:Landroid/net/INetworkStatsService;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
