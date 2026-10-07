.class public Lcom/android/settings/TetherProvisioningActivity;
.super Landroid/app/Activity;
.source "TetherProvisioningActivity.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "TetherProvisioningAct"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/TetherProvisioningActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    if-nez p1, :cond_2

    .line 75
    sget-boolean v0, Lcom/android/settings/TetherProvisioningActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherProvisioningAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got result from app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    const/16 v0, 0xb

    .line 79
    .local v0, "result":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->finish()V

    .line 82
    .end local v0
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraProvisionCallback"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/settings/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraAddTetherType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, "tetherType":I
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "provisionApp":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    aget-object v4, v1, v3

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v4, "TETHER_TYPE"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    sget-boolean v4, Lcom/android/settings/TetherProvisioningActivity;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 57
    const-string v4, "TetherProvisioningAct"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting provisioning app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    const-string v3, "TetherProvisioningAct"

    const-string v4, "Provisioning app is configured, but not available."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v3, p0, Lcom/android/settings/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->finish()V

    .line 65
    return-void

    .line 68
    :cond_1
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/TetherProvisioningActivity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 69
    return-void
.end method
