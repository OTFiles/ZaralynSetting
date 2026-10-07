.class public Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;
.super Ljava/lang/Object;
.source "ZenModeAddAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RuleSelectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;

    .line 67
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;->this$0:Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;Landroid/app/Fragment;)V
    .locals 2
    .param p1, "ri"    # Lcom/android/settings/notification/ZenRuleInfo;
    .param p2, "parent"    # Landroid/app/Fragment;

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public onSystemRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "ri"    # Lcom/android/settings/notification/ZenRuleInfo;
    .param p2, "parent"    # Landroid/app/Fragment;

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;->this$0:Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->showNameRuleDialog(Lcom/android/settings/notification/ZenRuleInfo;Landroid/app/Fragment;)V

    .line 72
    return-void
.end method
