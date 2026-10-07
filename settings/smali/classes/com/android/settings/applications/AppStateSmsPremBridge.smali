.class public Lcom/android/settings/applications/AppStateSmsPremBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateSmsPremBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSmsManager:Lcom/android/internal/telephony/ISms;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 36
    iput-object p1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mContext:Landroid/content/Context;

    .line 37
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 38
    return-void
.end method

.method private getSmsState(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getState(Ljava/lang/String;)Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;-><init>()V

    .line 57
    .local v0, "state":Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStateSmsPremBridge;->getSmsState(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    .line 58
    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 44
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 46
    .local v3, "app":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/applications/AppStateSmsPremBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    .line 44
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v2
    :cond_0
    return-void
.end method

.method public setSmsState(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 73
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    :goto_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 52
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStateSmsPremBridge;->getState(Ljava/lang/String;)Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 53
    return-void
.end method
