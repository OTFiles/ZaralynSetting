.class public Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultHomePreferenceController.java"


# static fields
.field static final HOME_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->HOME_FILTER:Landroid/content/IntentFilter;

    .line 42
    sget-object v0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->HOME_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->HOME_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private getOnlyAppInfo(Ljava/util/List;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .line 77
    .local p1, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "appLabels":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 81
    .local v2, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 82
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v2
    .end local v3
    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 88
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    goto :goto_1

    .line 89
    :cond_2
    const/4 v1, 0x0

    .line 87
    :goto_1
    return-object v1
.end method

.method public static hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 115
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 116
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 117
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const/4 v2, 0x1

    return v2

    .line 116
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v3
    :cond_1
    return v2
.end method

.method public static isHomeDefault(Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "pm"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    .line 128
    .local v1, "def":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 8

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    .line 65
    .local v1, "currentDefaultHome":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 66
    new-instance v2, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v5, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mUserId:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    return-object v2

    .line 68
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->getOnlyAppInfo(Ljava/util/List;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 69
    .local v2, "onlyAppInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_1

    .line 70
    new-instance v3, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v6, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mUserId:I

    .line 71
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    .line 70
    return-object v3

    .line 73
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "default_home"

    return-object v0
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 5
    .param p1, "info"    # Lcom/android/settingslib/applications/DefaultAppInfo;

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 95
    return-object v0

    .line 98
    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 100
    .end local v1
    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 103
    .restart local v1
    :goto_1
    nop

    .line 106
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x10008000

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 109
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move-object v0, v2

    nop

    :cond_2
    return-object v0

    .line 103
    .end local v1
    .end local v2
    :cond_3
    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
