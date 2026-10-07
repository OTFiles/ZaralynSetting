.class Lcom/android/settings/display/ColorPaperLikeModePreferenceController$1;
.super Ljava/lang/Object;
.source "ColorPaperLikeModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ColorPaperLikeModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ColorPaperLikeModePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ColorPaperLikeModePreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    .line 73
    iput-object p1, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController$1;->this$0:Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshIcon()V
    .locals 2

    .line 76
    const-string v0, ""

    const-string v1, "======divhee==========refreshIcon======="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController$1;->this$0:Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->updateNowColorPaperLikeMode(Landroid/content/Context;)V

    .line 78
    return-void
.end method
