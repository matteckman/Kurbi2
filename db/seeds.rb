# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = SymptomCategories.create ([{category: 'Visual Symptoms'}, {category: 'Motor Symptoms'}, {category: 'Sensory Symptoms'}, {category: 'Coordination and Balance Symptoms'}, {category: 'Bowel, Bladder and Sexual Symptoms'}, {category: 'Cognitive Symptoms'}, {category: 'Other Symptoms'}])

# Example:
# d = Dog.new
# d.build_person(:attributes => "go", :here => "like normal")

# Visual Symptoms
cat = categories.first
cat.PredefinedSymptoms.create(name: 'Optic Neuritis', description: 'Blurred vision, eye pain, loss of colour vision, blindness')
cat.PredefinedSymptoms.create(name: 'Diplopia', description: 'Double Vision')
cat.PredefinedSymptoms.create(name: 'Nystagmus', description: 'Jerky Eye Movements')
cat.PredefinedSymptoms.create(name: 'Ocular Dysmetria', description: 'Constant under- or overshooting eye movements')
cat.PredefinedSymptoms.create(name: 'Internuclear Ophthalmoplegia', description: 'Lack of coordination between the two eyes, nystagmus, diplopia')
cat.PredefinedSymptoms.create(name: 'Movement and sound phosphenes', description: 'Flashing lights when moving eyes or in response to a sudden noise')
cat.PredefinedSymptoms.create(name: 'Afferent Pupillary Defect', description: 'Abnormal pupil responses')

# Motor Symptoms
cat = categories.next
cat.PredefinedSymptoms.create(name: 'Paresis, Monoparesis, Paraparesis, Hemiparesis, Quadraparesis', description: 'Muscle weakness - partial or mild paralysis')
cat.PredefinedSymptoms.create(name: 'Plegia, Paraplegia, Hemiplegia, Tetraplegia, Quadraplegia', description: 'Paralysis - Total or near total loss of muscle strength')
cat.PredefinedSymptoms.create(name: 'Spasticity', description: 'Loss of muscle tone causing stiffness, pain and restricting free movement of affected limbs')
cat.PredefinedSymptoms.create(name: 'Dysarthria', description: 'Slurred speech and related speech problems')
cat.PredefinedSymptoms.create(name: 'Muscle Atrophy', description: 'Wasting of muscles due to lack of use')
cat.PredefinedSymptoms.create(name: 'Spasms, Cramps', description: 'Involuntary contraction of muscles')
cat.PredefinedSymptoms.create(name: 'Hypotonia, Clonus', description: 'Problems with posture')
cat.PredefinedSymptoms.create(name: 'Myoclonus, Myokymia', description: 'Jerking and twitching muscles, Tics')
cat.PredefinedSymptoms.create(name: 'Restless Leg Syndrome', description: 'Involuntary Leg Movements, especially bothersome at night')
cat.PredefinedSymptoms.create(name: 'Footdrop', description: 'Foot drags along floor during walking')
cat.PredefinedSymptoms.create(name: 'Dysfunctional Reflexes', description: 'MSRs, Babinski\'s, Hoffman\'s, Chaddock\'s')

# Sensory Symptoms
cat = categories.next
cat.PredefinedSymptoms.create(name: 'Paraesthesia', description: 'Partial numbness, tingling, buzzing and vibration sensations')
cat.PredefinedSymptoms.create(name: 'Anaesthesia', description: 'Complete numbness/loss of sensation')
cat.PredefinedSymptoms.create(name: 'Neuralgia, Neuropathic and Neurogenic pain', description: 'Pain without apparent cause, burning, itching and electrical shock sensations')
cat.PredefinedSymptoms.create(name: 'L\'Hermitte\'s', description: 'Electric shocks and buzzing sensations when moving head')
cat.PredefinedSymptoms.create(name: 'Proprioceptive Dysfunction', description: 'Loss of awareness of location of body parts')
cat.PredefinedSymptoms.create(name: 'Trigeminal Neuralgia', description: 'Facial pain')

# Coordination and Balance Symptoms
cat = categories.next
cat.PredefinedSymptoms.create(name: 'Ataxia', description: 'Loss of coordination')
cat.PredefinedSymptoms.create(name: 'Intention tremor', description: 'Shaking when performing fine movements')
cat.PredefinedSymptoms.create(name: 'Dysmetria', description: 'Constant under- or overshooting limb movements')
cat.PredefinedSymptoms.create(name: 'Vestibular Ataxia', description: 'Abnormal balance function in the inner ear')
cat.PredefinedSymptoms.create(name: 'Vertigo', description: 'Nausea/vomitting/sensitivity to travel sickness from vestibular ataxia')
cat.PredefinedSymptoms.create(name: 'Speech Ataxia', description: 'Problems coordinating speech, stuttering')
cat.PredefinedSymptoms.create(name: 'Dystonia', description: 'Slow limb position feedback')
cat.PredefinedSymptoms.create(name: 'Dysdiadochokinesia', description: 'Loss of ability to produce rapidly alternating movements, for example to move to a rhythm')

#Bowel, Bladder and Sexual Symptoms
cat = categories.next
cat.PredefinedSymptoms.create(name: 'Frequent Micturation, Bladder Spasticity', description: 'Urinary urgency and incontinence')
cat.PredefinedSymptoms.create(name: 'Flaccid Bladder, Detrusor-Sphincter Dyssynergia', description: 'Urinary hesitancy and retention')
cat.PredefinedSymptoms.create(name: 'Erectile Dysfunction', description: 'Male and female impotence')
cat.PredefinedSymptoms.create(name: 'Anorgasmy', description: 'Inability to achieve orgasm')
cat.PredefinedSymptoms.create(name: 'Retrograde ejaculation', description: 'Ejaculating into the bladder')
cat.PredefinedSymptoms.create(name: 'Frigidity', description: 'Inability to become sexually aroused')
cat.PredefinedSymptoms.create(name: 'Constipation', description: 'Infrequent or irregular bowel movements')
cat.PredefinedSymptoms.create(name: 'Fecal Urgency', description: 'Bowel urgency')
cat.PredefinedSymptoms.create(name: 'Fecal Incontinence', description: 'Bowel incontinence')

#Cognitive Symptoms
cat = categories.next
cat.PredefinedSymptoms.create(name: 'Depression', description: '')
cat.PredefinedSymptoms.create(name: 'Cognitive dysfunction', description: 'Short-term and long-term memory problems, forgetfulness, slow word recall')
cat.PredefinedSymptoms.create(name: 'Dementia', description: '')
cat.PredefinedSymptoms.create(name: 'Mood swings, emotional lability, euphoria', description: '')
cat.PredefinedSymptoms.create(name: 'Bipolar syndrome', description: '')
cat.PredefinedSymptoms.create(name: 'Anxiety', description: '')
cat.PredefinedSymptoms.create(name: 'Aphasia, Dysphasia', description: 'Impairments to speech comprehension and production')

#Other Symptoms
cat = categories.next
cat.PredefinedSymptoms.create(name: 'Fatigue', description: '')
cat.PredefinedSymptoms.create(name: 'Uhthoff\'s Symptom', description: 'Increase in severity of symptoms with heat')
cat.PredefinedSymptoms.create(name: 'Gastroesophageal Reflux', description: 'Acid reflux')
cat.PredefinedSymptoms.create(name: 'Impaired sense of taste and smell', description: '')
cat.PredefinedSymptoms.create(name: 'Epileptic seizures', description: '')
cat.PredefinedSymptoms.create(name: 'Swallowing problems', description: '')
cat.PredefinedSymptoms.create(name: 'Respiratory problems', description: '')
cat.PredefinedSymptoms.create(name: 'Sleeping Disorders', description: '')
cat.PredefinedSymptoms.create(name: 'Inappropriately cold body parts', description: '')
cat.PredefinedSymptoms.create(name: 'Autonomic nervous system problems', description: '')