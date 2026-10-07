.class Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 241
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 3
    .param p1, "toggleSwitch"    # Lcom/android/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .line 244
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$100(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_captioning_enabled"

    .line 246
    nop

    .line 245
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$200(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$200(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v0

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 251
    :cond_1
    return v1
.end method
