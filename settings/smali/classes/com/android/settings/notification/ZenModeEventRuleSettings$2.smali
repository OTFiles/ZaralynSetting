.class Lcom/android/settings/notification/ZenModeEventRuleSettings$2;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeEventRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeEventRuleSettings;

    .line 147
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 150
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "reply":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    iput v0, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 153
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 154
    const/4 v1, 0x1

    return v1
.end method
