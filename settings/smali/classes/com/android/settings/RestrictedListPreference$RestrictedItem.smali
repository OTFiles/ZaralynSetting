.class public Lcom/android/settings/RestrictedListPreference$RestrictedItem;
.super Ljava/lang/Object;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictedItem"
.end annotation


# instance fields
.field public final enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public final entry:Ljava/lang/CharSequence;

.field public final entryValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "enforcedAdmin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    .line 297
    iput-object p2, p0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    .line 298
    iput-object p3, p0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 299
    return-void
.end method
