.class public Lcom/android/settings/display/NightDisplaySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NightDisplaySettings.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lcom/android/settings/display/NightDisplaySettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/NightDisplaySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/NightDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 41
    invoke-static {p0}, Lcom/android/settings/display/NightDisplaySettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
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

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/display/NightDisplayFooterPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/NightDisplayFooterPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-object v0
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/android/settings/display/NightDisplaySettings;ILandroid/widget/TimePicker;II)V
    .locals 2
    .param p1, "dialogId"    # I
    .param p2, "view"    # Landroid/widget/TimePicker;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I

    .line 100
    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    .line 101
    .local v0, "time":Ljava/time/LocalTime;
    if-nez p1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ColorDisplayController;->setCustomStartTime(Ljava/time/LocalTime;)Z

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ColorDisplayController;->setCustomEndTime(Ljava/time/LocalTime;)Z

    .line 106
    :goto_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 175
    invoke-static {p1}, Lcom/android/settings/display/NightDisplaySettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 117
    :pswitch_0    # 0x1
    const/16 v0, 0x24d

    return v0

    .line 115
    :pswitch_1    # 0x0
    const/16 v0, 0x24c

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public getHelpResource()I
    .locals 1

    .line 165
    const v0, 0x7f1206d0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 170
    const-string v0, "NightDisplaySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 160
    const/16 v0, 0x1e8

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 155
    const v0, 0x7f150076

    return v0
.end method

.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    .line 127
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0
    .param p1, "autoMode"    # I

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    .line 133
    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 0
    .param p1, "colorTemperature"    # I

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 57
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "dialogId"    # I

    .line 89
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 91
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    .local v0, "initialTime":Ljava/time/LocalTime;
    goto :goto_1

    .line 94
    .end local v0
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 97
    .restart local v0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 98
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    .line 99
    .local v8, "use24HourFormat":Z
    new-instance v9, Landroid/app/TimePickerDialog;

    new-instance v3, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$EHQrigX4B__bQ2Ww7B-DCA-KncQ;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$EHQrigX4B__bQ2Ww7B-DCA-KncQ;-><init>(Lcom/android/settings/display/NightDisplaySettings;I)V

    .line 106
    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    move-object v1, v9

    move-object v2, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 99
    return-object v9
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    .line 151
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    .line 145
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 77
    const-string v0, "night_display_end_time"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    .line 79
    return v1

    .line 80
    :cond_0
    const-string v0, "night_display_start_time"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    .line 82
    return v1

    .line 84
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 64
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 65
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 73
    return-void
.end method
