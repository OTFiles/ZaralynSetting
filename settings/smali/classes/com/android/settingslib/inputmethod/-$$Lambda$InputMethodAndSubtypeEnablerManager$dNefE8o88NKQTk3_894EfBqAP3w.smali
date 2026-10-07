.class public final synthetic Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManager$dNefE8o88NKQTk3_894EfBqAP3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManager$dNefE8o88NKQTk3_894EfBqAP3w;->f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManager$dNefE8o88NKQTk3_894EfBqAP3w;->f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;

    check-cast p1, Landroid/support/v7/preference/Preference;

    check-cast p2, Landroid/support/v7/preference/Preference;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->lambda$addInputMethodSubtypePreferences$0(Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method
