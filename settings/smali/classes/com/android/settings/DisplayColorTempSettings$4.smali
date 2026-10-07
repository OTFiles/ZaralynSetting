.class Lcom/android/settings/DisplayColorTempSettings$4;
.super Ljava/lang/Object;
.source "DisplayColorTempSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplayColorTempSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplayColorTempSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplayColorTempSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplayColorTempSettings;

    .line 348
    iput-object p1, p0, Lcom/android/settings/DisplayColorTempSettings$4;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$4;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-virtual {v0}, Lcom/android/settings/DisplayColorTempSettings;->updateColorTempSettings()V

    .line 352
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$4;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v0}, Lcom/android/settings/DisplayColorTempSettings;->access$600(Lcom/android/settings/DisplayColorTempSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings$4;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v1}, Lcom/android/settings/DisplayColorTempSettings;->access$500(Lcom/android/settings/DisplayColorTempSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$4;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v0}, Lcom/android/settings/DisplayColorTempSettings;->access$600(Lcom/android/settings/DisplayColorTempSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplayColorTempSettings$4;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-static {v1}, Lcom/android/settings/DisplayColorTempSettings;->access$500(Lcom/android/settings/DisplayColorTempSettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void
.end method
