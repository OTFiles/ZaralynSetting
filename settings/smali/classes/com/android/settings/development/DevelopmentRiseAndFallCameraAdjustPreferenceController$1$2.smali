.class Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1$2;
.super Ljava/lang/Object;
.source "DevelopmentRiseAndFallCameraAdjustPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;

    .line 213
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1$2;->this$1:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 216
    const-string v0, ""

    const-string v1, "=====divhee=======setOnDismissListener==1="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1$2;->this$1:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 218
    const-string v0, ""

    const-string v1, "=====divhee=======setOnDismissListener==3="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1$2;->this$1:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1$2;->this$1:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->refreshRbciRiseFallCameraStatus(I)V

    .line 223
    return-void
.end method
