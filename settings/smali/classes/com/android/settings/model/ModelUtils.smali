.class public final Lcom/android/settings/model/ModelUtils;
.super Ljava/lang/Object;
.source "ModelUtils.java"


# static fields
.field private static final LAUNCHER_INTENT:Landroid/content/Intent;

.field public static final MODERN_PERMISSION_GROUPS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 50
    const-string v0, "android.permission-group.CALENDAR"

    const-string v1, "android.permission-group.CALL_LOG"

    const-string v2, "android.permission-group.CAMERA"

    const-string v3, "android.permission-group.CONTACTS"

    const-string v4, "android.permission-group.LOCATION"

    const-string v5, "android.permission-group.SENSORS"

    const-string v6, "android.permission-group.SMS"

    const-string v7, "android.permission-group.PHONE"

    const-string v8, "android.permission-group.MICROPHONE"

    const-string v9, "android.permission-group.STORAGE"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/model/ModelUtils;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/model/ModelUtils;->LAUNCHER_INTENT:Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public static isModernPermissionGroup(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/android/settings/model/ModelUtils;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 81
    .local v4, "modernGroup":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const/4 v0, 0x1

    return v0

    .line 80
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_1
    return v2
.end method

.method public static shouldShowPermission(Lcom/android/settings/model/AppPermissionGroup;Ljava/lang/String;)Z
    .locals 3
    .param p0, "group"    # Lcom/android/settings/model/AppPermissionGroup;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/model/AppPermissionGroup;->isSystemFixed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0, p1}, Lcom/android/settings/model/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/model/AppPermissionGroup;->isGrantingAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    return v1

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    .local v0, "isPlatformPermission":Z
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/model/ModelUtils;->isModernPermissionGroup(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    return v1

    .line 106
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
