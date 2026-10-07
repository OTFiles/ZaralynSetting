.class Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;
.super Ljava/lang/Object;
.source "ZenAutomaticRuleHeaderPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 78
    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->access$000(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/support/v14/preference/PreferenceFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->access$100(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;

    iget-object v3, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-direct {v2, v3}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;-><init>(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/notification/ZenRuleNameDialog;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;)V

    .line 83
    return-void
.end method
