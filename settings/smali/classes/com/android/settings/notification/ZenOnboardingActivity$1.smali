.class Lcom/android/settings/notification/ZenOnboardingActivity$1;
.super Ljava/lang/Object;
.source "ZenOnboardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenOnboardingActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenOnboardingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenOnboardingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenOnboardingActivity;

    .line 79
    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity$1;->this$0:Lcom/android/settings/notification/ZenOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity$1;->this$0:Lcom/android/settings/notification/ZenOnboardingActivity;

    iget-object v0, v0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity$1;->this$0:Lcom/android/settings/notification/ZenOnboardingActivity;

    iget-object v0, v0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 84
    return-void
.end method
