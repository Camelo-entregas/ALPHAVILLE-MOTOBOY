import { Phone, Clock, MapPin, CheckCircle, MessageCircle } from 'lucide-react'

function App() {
  const whatsappNumber = "5531361615"
  const whatsappMessage = "Olá! Gostaria de solicitar uma entrega em Alphaville."

  const openWhatsApp = () => {
    const url = `https://wa.me/${whatsappNumber}?text=${encodeURIComponent(whatsappMessage)}`
    window.open(url, '_blank')
  }

  return (
    <div className="min-h-screen bg-white">
      {/* WhatsApp Floating Button */}
      <button
        onClick={openWhatsApp}
        className="fixed bottom-6 right-6 bg-green-500 hover:bg-green-600 text-white p-4 rounded-full shadow-lg z-50 transition-all duration-300 hover:scale-110"
        aria-label="Contato via WhatsApp"
      >
        <MessageCircle size={24} />
      </button>

      {/* Header */}
      <header className="bg-blue-600 text-white py-4 shadow-lg">
        <div className="container mx-auto px-4">
          <h1 className="text-3xl font-bold text-center">Entregas Rápidas Alphaville</h1>
          <p className="text-center text-blue-100 mt-2">Seu pedido entregue com agilidade e segurança</p>
        </div>
      </header>

      {/* Hero Section */}
      <section className="relative bg-gradient-to-br from-blue-500 to-blue-700 text-white py-20">
        <div className="container mx-auto px-4 text-center">
          <h2 className="text-5xl font-bold mb-6">Entregas Rápidas em Alphaville</h2>
          <p className="text-xl mb-8 max-w-2xl mx-auto">
            Serviço de entrega express para toda a região de Alphaville.
            Motoboys profissionais e pontuais para suas necessidades.
          </p>
          <button
            onClick={openWhatsApp}
            className="bg-yellow-400 text-blue-900 px-8 py-4 rounded-lg text-lg font-semibold hover:bg-yellow-300 transition-colors inline-flex items-center gap-2"
          >
            <MessageCircle size={20} />
            Solicitar Entrega
          </button>
        </div>
      </section>

      {/* Services Section */}
      <section className="py-16 bg-gray-50">
        <div className="container mx-auto px-4">
          <h3 className="text-3xl font-bold text-center mb-12 text-gray-800">Nossos Serviços</h3>
          <div className="grid md:grid-cols-3 gap-8">
            <div className="bg-white p-6 rounded-lg shadow-md text-center">
              <Clock className="w-12 h-12 text-blue-600 mx-auto mb-4" />
              <h4 className="text-xl font-semibold mb-3">Entrega Rápida</h4>
              <p className="text-gray-600">Entregas em até 1 hora dentro de Alphaville</p>
            </div>
            <div className="bg-white p-6 rounded-lg shadow-md text-center">
              <CheckCircle className="w-12 h-12 text-green-600 mx-auto mb-4" />
              <h4 className="text-xl font-semibold mb-3">Segurança Total</h4>
              <p className="text-gray-600">Motoboys experientes e produtos seguros</p>
            </div>
            <div className="bg-white p-6 rounded-lg shadow-md text-center">
              <MapPin className="w-12 h-12 text-red-600 mx-auto mb-4" />
              <h4 className="text-xl font-semibold mb-3">Rastreamento</h4>
              <p className="text-gray-600">Acompanhe sua entrega em tempo real</p>
            </div>
          </div>
        </div>
      </section>

      {/* Motoboy Images Section */}
      <section className="py-16">
        <div className="container mx-auto px-4">
          <h3 className="text-3xl font-bold text-center mb-12 text-gray-800">Nossa Equipe</h3>
          <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
            <div className="bg-white rounded-lg shadow-lg overflow-hidden">
              <img
                src="https://ugc.same-assets.com/Gam169ZcvfMi7mY5dXMyRqJnfBTXa5-S.jpeg"
                alt="Motoboy profissional com moto de entrega"
                className="w-full h-48 object-cover"
              />
              <div className="p-4">
                <h4 className="font-semibold text-lg mb-2">Entregas Profissionais</h4>
                <p className="text-gray-600">Equipamentos modernos e seguros</p>
              </div>
            </div>
            <div className="bg-white rounded-lg shadow-lg overflow-hidden">
              <img
                src="https://ugc.same-assets.com/hLCdPG_a9qS3BEd3TTItJS2FwscgTB2a.jpeg"
                alt="Motoboy com baú de entrega"
                className="w-full h-48 object-cover"
              />
              <div className="p-4">
                <h4 className="font-semibold text-lg mb-2">Baús Refrigerados</h4>
                <p className="text-gray-600">Para produtos que precisam de temperatura controlada</p>
              </div>
            </div>
            <div className="bg-white rounded-lg shadow-lg overflow-hidden">
              <img
                src="https://ugc.same-assets.com/SlWXsBg6zMFST2F2aoyRxiiJgYw3tKRd.jpeg"
                alt="Serviço de delivery"
                className="w-full h-48 object-cover"
              />
              <div className="p-4">
                <h4 className="font-semibold text-lg mb-2">Delivery Express</h4>
                <p className="text-gray-600">Rapidez e agilidade garantidas</p>
              </div>
            </div>
            <div className="bg-white rounded-lg shadow-lg overflow-hidden">
              <img
                src="https://ugc.same-assets.com/til5edFj4ZICCGwvF9JL3x7NvUxAWc9U.jpeg"
                alt="Motoboy em treinamento"
                className="w-full h-48 object-cover"
              />
              <div className="p-4">
                <h4 className="font-semibold text-lg mb-2">Equipe Treinada</h4>
                <p className="text-gray-600">Profissionais qualificados e experientes</p>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Alphaville Section */}
      <section className="py-16 bg-gray-900 text-white">
        <div className="container mx-auto px-4">
          <div className="grid lg:grid-cols-2 gap-12 items-center">
            <div>
              <h3 className="text-3xl font-bold mb-6">Atendemos Todo Alphaville</h3>
              <p className="text-lg mb-6 text-gray-300">
                Conhecemos cada condomínio e empresa da região. Nossa experiência
                local garante entregas rápidas e eficientes em todos os residenciais
                e centros empresariais de Alphaville.
              </p>
              <ul className="space-y-3">
                <li className="flex items-center">
                  <CheckCircle className="w-5 h-5 text-green-400 mr-3" />
                  <span>Alphaville Residencial 1, 2, 3...</span>
                </li>
                <li className="flex items-center">
                  <CheckCircle className="w-5 h-5 text-green-400 mr-3" />
                  <span>Centro Empresarial</span>
                </li>
                <li className="flex items-center">
                  <CheckCircle className="w-5 h-5 text-green-400 mr-3" />
                  <span>Condomínios de Alto Padrão</span>
                </li>
                <li className="flex items-center">
                  <CheckCircle className="w-5 h-5 text-green-400 mr-3" />
                  <span>Shopping Alphaville</span>
                </li>
              </ul>
            </div>
            <div className="lg:pl-8">
              <img
                src="https://ugc.same-assets.com/WvQZp12PDoW0UuM-DnR-ojMbpsDEx85d.jpeg"
                alt="Região de Alphaville - edifícios e condomínios"
                className="rounded-lg shadow-2xl w-full"
              />
            </div>
          </div>
        </div>
      </section>

      {/* Additional Alphaville Images */}
      <section className="py-16 bg-white">
        <div className="container mx-auto px-4">
          <h3 className="text-3xl font-bold text-center mb-12 text-gray-800">Alphaville - Nossa Região</h3>
          <div className="grid md:grid-cols-3 gap-6">
            <div className="rounded-lg overflow-hidden shadow-lg">
              <img
                src="https://ugc.same-assets.com/oUvXK3KUCpxqg2TCerDlJhbVJA2-tFVq.jpeg"
                alt="Conjunto residencial Alphaville"
                className="w-full h-64 object-cover"
              />
            </div>
            <div className="rounded-lg overflow-hidden shadow-lg">
              <img
                src="https://ugc.same-assets.com/GGDkLiUrUQ7JAE4nevDakCJhlWCg8THl.jpeg"
                alt="Condomínio Alphaville Residencial"
                className="w-full h-64 object-cover"
              />
            </div>
            <div className="rounded-lg overflow-hidden shadow-lg">
              <img
                src="https://ugc.same-assets.com/RnGMABFLBbNfqs1A0SvuW0F9tqrJfsHu.jpeg"
                alt="Casa de condomínio em Alphaville"
                className="w-full h-64 object-cover"
              />
            </div>
          </div>
        </div>
      </section>

      {/* Contact Section */}
      <section className="py-16 bg-blue-600 text-white">
        <div className="container mx-auto px-4 text-center">
          <h3 className="text-3xl font-bold mb-8">Entre em Contato</h3>
          <div className="grid md:grid-cols-4 gap-8">
            <div>
              <Phone className="w-8 h-8 mx-auto mb-4" />
              <h4 className="text-xl font-semibold mb-2">Telefone</h4>
              <p className="text-blue-100">(31) 3361615</p>
            </div>
            <div>
              <MessageCircle className="w-8 h-8 mx-auto mb-4" />
              <h4 className="text-xl font-semibold mb-2">WhatsApp</h4>
              <button
                onClick={openWhatsApp}
                className="text-blue-100 hover:text-white transition-colors underline"
              >
                (31) 3361615
              </button>
            </div>
            <div>
              <Clock className="w-8 h-8 mx-auto mb-4" />
              <h4 className="text-xl font-semibold mb-2">Horário</h4>
              <p className="text-blue-100">24 horas por dia</p>
            </div>
            <div>
              <MapPin className="w-8 h-8 mx-auto mb-4" />
              <h4 className="text-xl font-semibold mb-2">Região</h4>
              <p className="text-blue-100">Alphaville e adjacências</p>
            </div>
          </div>

          {/* WhatsApp CTA Button */}
          <div className="mt-12">
            <button
              onClick={openWhatsApp}
              className="bg-green-500 hover:bg-green-600 text-white px-8 py-4 rounded-lg text-lg font-semibold transition-colors inline-flex items-center gap-2"
            >
              <MessageCircle size={20} />
              Solicitar Entrega via WhatsApp
            </button>
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="bg-gray-800 text-white py-8">
        <div className="container mx-auto px-4 text-center">
          <h4 className="text-xl font-bold mb-4">Entregas Rápidas Alphaville</h4>
          <p className="text-gray-400">
            © 2025 Entregas Rápidas Alphaville. Todos os direitos reservados.
          </p>
        </div>
      </footer>
    </div>
  )
}

export default App
