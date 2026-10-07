.class public Lcom/android/settings/notification/NotificationAppListSettings$Backend;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Backend"
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 789
    const-string v0, "notification"

    .line 790
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 789
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAppListSettings$Backend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 804
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationAppListSettings$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 805
    .local v1, "enabled":Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 806
    .end local v1
    :catch_0
    move-exception v1

    .line 807
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    return v0
.end method

.method public setNotificationsBanned(Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "banned"    # Z

    .line 794
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationAppListSettings$Backend;->sINM:Landroid/app/INotificationManager;

    xor-int/lit8 v1, p3, 0x1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 795
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationAppList"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    const/4 v1, 0x0

    return v1
.end method
