.class public Lcom/android/settings/notification/NotificationAccessSettings;
.super Lcom/android/settings/utils/ManagedServiceSettings;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    }
.end annotation


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNm:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;-><init>()V

    sget-object v1, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.service.notification.NotificationListenerService"

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "notification listener"

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 48
    const v1, 0x7f120971

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogTitle(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 49
    const v1, 0x7f120970

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogSummary(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 50
    const v1, 0x7f120945

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setEmptyText(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->build()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/utils/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAccessSettings;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 40
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->disable(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    return-void
.end method

.method private static disable(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "parent"    # Lcom/android/settings/notification/NotificationAccessSettings;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 120
    new-instance v0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$5Getr2Y6VpjSaSB3qVPpmCZNr9A;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$5Getr2Y6VpjSaSB3qVPpmCZNr9A;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method static synthetic lambda$disable$0(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "parent"    # Lcom/android/settings/notification/NotificationAccessSettings;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    .line 122
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method protected enable(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 103
    return-void
.end method

.method protected getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 57
    const/16 v0, 0xb3

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 107
    const v0, 0x7f150077

    return v0
.end method

.method protected isServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    if-eqz p1, :cond_0

    const/16 v0, 0x308

    goto :goto_0

    .line 113
    :cond_0
    const/16 v0, 0x309

    .line 114
    .local v0, "logCategory":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 116
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->onAttach(Landroid/content/Context;)V

    .line 63
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    .line 64
    return-void
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 73
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/NotificationAccessSettings;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    new-instance v1, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;-><init>()V

    .line 80
    invoke-virtual {v1, p1, p2, p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/Fragment;)Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "friendlydialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 82
    return v0

    .line 84
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    return v1

    .line 88
    :cond_2
    new-instance v1, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>()V

    .line 89
    invoke-virtual {v1, p1, p2, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    return v0
.end method
