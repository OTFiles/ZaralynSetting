.class public Lcom/android/settings/notification/ZenModeScheduleRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
    }
.end annotation


# instance fields
.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroid/support/v7/preference/Preference;

.field private mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private mExitAtAlarm:Landroid/support/v14/preference/SwitchPreference;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    return-void
.end method

.method private showDaysDialog()V
    .locals 4

    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    const v1, 0x7f12123f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 234
    const v1, 0x7f12058a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 236
    return-void
.end method

.method private updateDays()V
    .locals 10

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 153
    .local v0, "days":[I
    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 156
    .local v2, "c":Ljava/util/Calendar;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v3

    .line 157
    .local v3, "daysOfWeek":[I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 158
    aget v6, v3, v5

    .line 159
    .local v6, "day":I
    move v7, v4

    .local v7, "j":I
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_2

    .line 160
    aget v8, v0, v7

    if-ne v6, v8, :cond_1

    .line 161
    const/4 v8, 0x7

    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 163
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f120e31

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    goto :goto_2

    .line 159
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 157
    .end local v6
    .end local v7
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    .end local v5
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 171
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 173
    return-void

    .line 176
    .end local v1
    .end local v2
    .end local v3
    :cond_4
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    const v2, 0x7f121241

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 178
    return-void
.end method

.method private updateEndSummary()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/16 v1, 0x3c

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v0, v2

    .line 182
    .local v0, "startMin":I
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v1, v2

    .line 183
    .local v1, "endMin":I
    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 184
    .local v3, "nextDay":Z
    :goto_0
    if-eqz v3, :cond_1

    const v2, 0x7f121209

    nop

    .line 185
    .local v2, "summaryFormat":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummaryFormat(I)V

    .line 186
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 203
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    .line 205
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 212
    const/16 v0, 0x90

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 77
    const v0, 0x7f1500d5

    return v0
.end method

.method protected onCreateInternal()V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 84
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string v1, "days"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    .line 85
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 95
    .local v1, "mgr":Landroid/app/FragmentManager;
    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 96
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v3, "start_time"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f121256

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 115
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 117
    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 118
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v3, "end_time"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f121208

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 120
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 136
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 137
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 139
    const-string v2, "exit_at_alarm"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroid/support/v14/preference/SwitchPreference;

    .line 140
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroid/support/v14/preference/SwitchPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    return-void
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected updateControlsInternal()V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateEndSummary()V

    .line 195
    return-void
.end method
