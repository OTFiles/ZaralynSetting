.class public final synthetic Lcom/android/settings/notification/-$$Lambda$SoundSettings$jhjL65jex6M9bCQGfPcGogvuH7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$SoundSettings$jhjL65jex6M9bCQGfPcGogvuH7o;->f$0:Lcom/android/settings/notification/SoundSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceDataChanged(Landroid/support/v7/preference/ListPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$SoundSettings$jhjL65jex6M9bCQGfPcGogvuH7o;->f$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0, p1}, Lcom/android/settings/notification/SoundSettings;->lambda$onAttach$0(Lcom/android/settings/notification/SoundSettings;Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method
