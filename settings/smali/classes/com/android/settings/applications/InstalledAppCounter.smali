.class public abstract Lcom/android/settings/applications/InstalledAppCounter;
.super Lcom/android/settings/applications/AppCounter;
.source "InstalledAppCounter.java"


# instance fields
.field private final mInstallReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installReason"    # I
    .param p3, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    .line 40
    iput p2, p0, Lcom/android/settings/applications/InstalledAppCounter;->mInstallReason:I

    .line 41
    return-void
.end method

.method public static includeInCount(ILcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .param p0, "installReason"    # I
    .param p1, "pm"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 50
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 51
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 52
    invoke-virtual {p1, v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    if-eq v2, p0, :cond_0

    .line 54
    return v1

    .line 56
    :cond_0
    iget v2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 57
    return v3

    .line 59
    :cond_1
    iget v2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 60
    return v3

    .line 62
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 63
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 64
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 65
    .local v2, "launchIntent":Landroid/content/Intent;
    const v4, 0xc0200

    invoke-virtual {p1, v2, v4, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 71
    .local v4, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 45
    iget v0, p0, Lcom/android/settings/applications/InstalledAppCounter;->mInstallReason:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppCounter;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-static {v0, v1, p1}, Lcom/android/settings/applications/InstalledAppCounter;->includeInCount(ILcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
