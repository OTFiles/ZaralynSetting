.class Lcom/android/settings/AutoPreInstallFtpListApkService$4;
.super Ljava/lang/Object;
.source "AutoPreInstallFtpListApkService.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoPreInstallFtpListApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 833
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$4;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 840
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======divhee========mForgetListener=======reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 836
    const-string v0, ""

    const-string v1, "=======divhee========mForgetListener=======onSuccess="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void
.end method
