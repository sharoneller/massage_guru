Recommendation.create!([
  {modality: "Swedish", duration: "60 minutes", frequency: "bi-monthly", description: "Smooth, relaxing technique designed to promote blood flow, reduce stress and improve health. This is the most commom type of massage in the U.S.", pressure: "light"},
  {modality: "Deep Tissue", duration: "60 minutes", frequency: "bi-monthly", description: " A technique using deeper pressure to release chronic muscle tension and reduce  muscular adhesions.", pressure: "deep"},
  {modality: "Neuromuscular", duration: "90 minutes", frequency: "weekly", description: "A specialized form of deep tissue therapy that uses static pressure on trigger points in order to relieve muscular pain.", pressure: "deep"},
  {modality: "Reiki", duration: "60 minutes", frequency: "bi-monthly", description: "A Japanese technique for stress reduction and relaxation.", pressure: "light"},
  {modality: "Myofascial Release", duration: "90 minutes", frequency: "monthly", description: "The application of gentle, sustained pressure on connective tissue in order to relieve myofascial restrictions, which results in better range of motion and pain relief.", pressure: "light"},
  {modality: "Indian Head Massage", duration: "60 minutes", frequency: "quarterly", description: "A form of massage, originating from Ayurveda, that focuses on the face, head, neck and shoulders. It is very relaxing and has a balancing effect, often resulting in a reduction in stress and tension.", pressure: "light"},
  {modality: "Craniosacral Therapy", duration: "60 minutes", frequency: "monthly", description: "A gentle approach that helps release tensions deep in the body by promoting flow of the craniosacral fluid surrounding the spine and cranium.", pressure: "light"},
  {modality: "Lymphatic Drainage", duration: "90 minutes", frequency: "monthly", description: "A type of gentle massage which is intended to increase the natural drainage of lymph nodes, thereby carrying waste products away from the tissues. It also increases the production of lymphocytes which improves the body's ability to fight infection. ", pressure: "light"},
  {modality: "Foot and Hand Reflexology", duration: "90 minutes", frequency: "annual", description: "Application of pressure to certain points on the hands or feet that benefit organs and health.", pressure: "medium"},
  {modality: "Accupresure Massage", duration: "30 minutes", frequency: "weekly", description: "Based on traditional Chinese medicine, accurpresure massage focuses on points that lie along meridians, or channels, in your body. When pressure is applied to these points, energy blockages are removed, resulting in pain relief and improved general health.", pressure: "medium"},
  {modality: "Pregnancy Massage", duration: "60 minutes", frequency: "monthly", description: "A specialized massage for expectant Mothers designed to relieve back pain and other discomforts associated with pregnancy. Not recommended during first trimester.", pressure: "light"}
])
Symptom.create!([
  {name: "Neck Pain", severity: 5, recommendation_id: 1},
  {name: "Upper back pain", severity: 7, recommendation_id: 1}
])
