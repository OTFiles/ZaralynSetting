.class Lcom/android/settings/display/AutoRotatePreferenceController$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "AutoRotatePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/AutoRotatePreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/AutoRotatePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/AutoRotatePreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/display/AutoRotatePreferenceController;

    .line 52
    iput-object p1, p0, Lcom/android/settings/display/AutoRotatePreferenceController$1;->this$0:Lcom/android/settings/display/AutoRotatePreferenceController;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController$1;->this$0:Lcom/android/settings/display/AutoRotatePreferenceController;

    invoke-static {v0}, Lcom/android/settings/display/AutoRotatePreferenceController;->access$000(Lcom/android/settings/display/AutoRotatePreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController$1;->this$0:Lcom/android/settings/display/AutoRotatePreferenceController;

    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController$1;->this$0:Lcom/android/settings/display/AutoRotatePreferenceController;

    invoke-static {v1}, Lcom/android/settings/display/AutoRotatePreferenceController;->access$000(Lcom/android/settings/display/AutoRotatePreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AutoRotatePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 58
    :cond_0
    return-void
.end method
