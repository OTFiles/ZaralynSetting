.class public final synthetic Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;->f$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;->f$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->lambda$displayRecentApps$0(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
