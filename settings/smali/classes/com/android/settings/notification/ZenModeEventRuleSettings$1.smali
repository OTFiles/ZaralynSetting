.class Lcom/android/settings/notification/ZenModeEventRuleSettings$1;
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

    .line 120
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 123
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 124
    .local v0, "calendarKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$100(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 125
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 126
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 127
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 132
    const/4 v2, 0x1

    return v2
.end method
