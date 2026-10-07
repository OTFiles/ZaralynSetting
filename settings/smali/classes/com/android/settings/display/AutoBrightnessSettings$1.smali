.class Lcom/android/settings/display/AutoBrightnessSettings$1;
.super Ljava/lang/Object;
.source "AutoBrightnessSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AutoBrightnessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/AutoBrightnessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/display/AutoBrightnessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/display/AutoBrightnessSettings;

    .line 48
    iput-object p1, p0, Lcom/android/settings/display/AutoBrightnessSettings$1;->this$0:Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings$1;->this$0:Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-static {v0}, Lcom/android/settings/display/AutoBrightnessSettings;->access$100(Lcom/android/settings/display/AutoBrightnessSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/AutoBrightnessSettings$1;->this$0:Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-static {v1}, Lcom/android/settings/display/AutoBrightnessSettings;->access$000(Lcom/android/settings/display/AutoBrightnessSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings$1;->this$0:Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-static {v0}, Lcom/android/settings/display/AutoBrightnessSettings;->access$100(Lcom/android/settings/display/AutoBrightnessSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/AutoBrightnessSettings$1;->this$0:Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-static {v1}, Lcom/android/settings/display/AutoBrightnessSettings;->access$000(Lcom/android/settings/display/AutoBrightnessSettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings$1;->this$0:Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-static {v0}, Lcom/android/settings/display/AutoBrightnessSettings;->access$200(Lcom/android/settings/display/AutoBrightnessSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings$1;->this$0:Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-static {v0}, Lcom/android/settings/display/AutoBrightnessSettings;->access$300(Lcom/android/settings/display/AutoBrightnessSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 57
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/android/settings/display/AutoBrightnessSettings$1;->this$0:Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-static {v1}, Lcom/android/settings/display/AutoBrightnessSettings;->access$200(Lcom/android/settings/display/AutoBrightnessSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/settings/display/AutoBrightnessSettings$1;->this$0:Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-static {v1}, Lcom/android/settings/display/AutoBrightnessSettings;->access$200(Lcom/android/settings/display/AutoBrightnessSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 62
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    :goto_0
    return-void
.end method
