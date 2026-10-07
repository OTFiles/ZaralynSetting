.class public Lcom/android/settings/parentlauncher/ParentLauncherCell;
.super Ljava/lang/Object;
.source "ParentLauncherCell.java"


# instance fields
.field public iconPackage:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "strValues"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    :try_start_0
    const-string v0, "[{\\[\\]}]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 26
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "cellValues":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 28
    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->title:Ljava/lang/String;

    .line 29
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    .line 30
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->intent:Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->intent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/settings/parentlauncher/ParentLauncherCell;->getTargetPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    .line 36
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public static getTargetPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 53
    :cond_1
    return-object v0
.end method


# virtual methods
.method public isInitSucess()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherCell;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
