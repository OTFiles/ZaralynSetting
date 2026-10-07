.class public Lcom/android/settings/utils/ZenServiceListing;
.super Ljava/lang/Object;
.source "ZenServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/ZenServiceListing$Callback;
    }
.end annotation


# instance fields
.field private final mApprovedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private final mContext:Landroid/content/Context;

.field private final mNm:Landroid/app/NotificationManager;

.field private final mZenCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/utils/ZenServiceListing$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedServices:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/android/settings/utils/ZenServiceListing;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/utils/ZenServiceListing;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 48
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mNm:Landroid/app/NotificationManager;

    .line 49
    return-void
.end method

.method private static getServices(Lcom/android/settings/utils/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)I
    .locals 10
    .param p0, "c"    # Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/utils/ManagedServiceSettings$Config;",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")I"
        }
    .end annotation

    .line 92
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    const/4 v0, 0x0

    .line 93
    .local v0, "services":I
    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 96
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 98
    .local v1, "user":I
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 104
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 105
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 107
    .local v6, "info":Landroid/content/pm/ServiceInfo;
    iget-object v7, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 108
    iget-object v7, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    goto :goto_1

    .line 114
    :cond_1
    if-eqz p1, :cond_2

    .line 115
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 103
    .end local v5
    .end local v6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v3
    .end local v4
    :cond_3
    return v0
.end method


# virtual methods
.method public addZenCallback(Lcom/android/settings/utils/ZenServiceListing$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/settings/utils/ZenServiceListing$Callback;

    .line 62
    iget-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public findService(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 52
    iget-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 53
    .local v1, "service":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v2, "serviceCN":Landroid/content/ComponentName;
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    return-object v1

    .line 57
    .end local v1
    .end local v2
    :cond_0
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public reloadApprovedServices()V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "enabledNotificationListenerPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    iget-object v2, p0, Lcom/android/settings/utils/ZenServiceListing;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v3, p0, Lcom/android/settings/utils/ZenServiceListing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/settings/utils/ZenServiceListing;->getServices(Lcom/android/settings/utils/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)I

    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 76
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "servicePackage":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/utils/ZenServiceListing;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    :cond_0
    iget-object v5, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedServices:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v3
    .end local v4
    :cond_1
    goto :goto_0

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/utils/ZenServiceListing$Callback;

    .line 85
    .local v3, "callback":Lcom/android/settings/utils/ZenServiceListing$Callback;
    iget-object v4, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedServices:Ljava/util/Set;

    invoke-interface {v3, v4}, Lcom/android/settings/utils/ZenServiceListing$Callback;->onServicesReloaded(Ljava/util/Set;)V

    .line 86
    .end local v3
    goto :goto_1

    .line 88
    :cond_3
    return-void
.end method

.method public removeZenCallback(Lcom/android/settings/utils/ZenServiceListing$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/settings/utils/ZenServiceListing$Callback;

    .line 66
    iget-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
