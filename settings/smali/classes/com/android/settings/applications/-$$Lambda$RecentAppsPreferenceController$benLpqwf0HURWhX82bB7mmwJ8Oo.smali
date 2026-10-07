.class public final synthetic Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$benLpqwf0HURWhX82bB7mmwJ8Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$benLpqwf0HURWhX82bB7mmwJ8Oo;->f$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$benLpqwf0HURWhX82bB7mmwJ8Oo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$benLpqwf0HURWhX82bB7mmwJ8Oo;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$benLpqwf0HURWhX82bB7mmwJ8Oo;->f$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$benLpqwf0HURWhX82bB7mmwJ8Oo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$benLpqwf0HURWhX82bB7mmwJ8Oo;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2, p1}, Lcom/android/settings/applications/RecentAppsPreferenceController;->lambda$displayRecentApps$0(Lcom/android/settings/applications/RecentAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
