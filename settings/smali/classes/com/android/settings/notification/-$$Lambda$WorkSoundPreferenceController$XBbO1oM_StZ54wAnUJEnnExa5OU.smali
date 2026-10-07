.class public final synthetic Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$XBbO1oM_StZ54wAnUJEnnExa5OU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/WorkSoundPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/WorkSoundPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$XBbO1oM_StZ54wAnUJEnnExa5OU;->f$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$XBbO1oM_StZ54wAnUJEnnExa5OU;->f$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-static {v0, p1, p2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->lambda$updateWorkPreferences$0(Lcom/android/settings/notification/WorkSoundPreferenceController;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
