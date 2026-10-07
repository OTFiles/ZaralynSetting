.class Lcom/android/settings/SettingsPreinstallDialogActivity$2;
.super Ljava/lang/Object;
.source "SettingsPreinstallDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreinstallDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreinstallDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsPreinstallDialogActivity;

    .line 93
    iput-object p1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 97
    .local v0, "colorOrderArray":[I
    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$108(Lcom/android/settings/SettingsPreinstallDialogActivity;)I

    .line 98
    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$100(Lcom/android/settings/SettingsPreinstallDialogActivity;)I

    move-result v1

    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$100(Lcom/android/settings/SettingsPreinstallDialogActivity;)I

    move-result v1

    if-gez v1, :cond_1

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v1, v3}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$102(Lcom/android/settings/SettingsPreinstallDialogActivity;I)I

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$200(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$100(Lcom/android/settings/SettingsPreinstallDialogActivity;)I

    move-result v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$300(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->postInvalidate()V

    .line 104
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsPreinstallDialogActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsPreinstallDialogActivity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "=======divhee=============dialogShowRootContainer======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsPreinstallDialogActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$400(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    iget-object v2, v2, Lcom/android/settings/SettingsPreinstallDialogActivity;->mBgWinkingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$400(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    iget-object v2, v2, Lcom/android/settings/SettingsPreinstallDialogActivity;->mBgWinkingRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        -0x7f000100
        -0x7fff0100
        -0x7fffff01
        -0x7f010000
    .end array-data
.end method
