.class Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;
.super Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;
.source "VibrationIntensityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
    .param p2, "settingKey"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;->this$0:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;->this$0:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;->this$0:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;

    invoke-static {v1}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->access$000(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 53
    return-void
.end method
