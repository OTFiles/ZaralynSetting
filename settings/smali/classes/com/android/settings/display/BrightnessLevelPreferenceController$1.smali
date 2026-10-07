.class Lcom/android/settings/display/BrightnessLevelPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "BrightnessLevelPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/BrightnessLevelPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/BrightnessLevelPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/display/BrightnessLevelPreferenceController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;->this$0:Lcom/android/settings/display/BrightnessLevelPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 72
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;->this$0:Lcom/android/settings/display/BrightnessLevelPreferenceController;

    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;->this$0:Lcom/android/settings/display/BrightnessLevelPreferenceController;

    invoke-static {v1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->access$000(Lcom/android/settings/display/BrightnessLevelPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->access$100(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/support/v7/preference/Preference;)V

    .line 73
    return-void
.end method
