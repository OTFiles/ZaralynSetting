.class Lcom/android/settings/notification/ZenRulePreference$2;
.super Ljava/lang/Object;
.source "ZenRulePreference.java"

# interfaces
.implements Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRulePreference;->showDeleteRuleDialog(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRulePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRulePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenRulePreference;

    .line 103
    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRulePreference;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0xaf

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRulePreference;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->removeZenRule(Ljava/lang/String;)Z

    .line 109
    return-void
.end method
