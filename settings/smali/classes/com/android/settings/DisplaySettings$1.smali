.class Lcom/android/settings/DisplaySettings$1;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;

    .line 77
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->resetAndupdateNowColorPaperLikeMode(Landroid/content/Context;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$200(Lcom/android/settings/DisplaySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$200(Lcom/android/settings/DisplaySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method
