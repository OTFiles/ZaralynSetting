.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    .line 120
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTime(II)Z
    .locals 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 123
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-boolean v0, v0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDisableListeners:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 124
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 125
    :cond_1
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    if-ne p2, v0, :cond_3

    .line 127
    return v1

    .line 129
    :cond_3
    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange end h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput p2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 133
    return v1
.end method
