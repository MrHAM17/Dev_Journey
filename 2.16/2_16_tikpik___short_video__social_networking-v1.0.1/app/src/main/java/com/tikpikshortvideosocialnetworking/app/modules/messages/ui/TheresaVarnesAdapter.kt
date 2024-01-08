package com.tikpikshortvideosocialnetworking.app.modules.messages.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowTheresavarnesBinding
import com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.model.TheresavarnesRowModel
import kotlin.Int
import kotlin.collections.List

class TheresaVarnesAdapter(
  var list: List<TheresavarnesRowModel>
) : RecyclerView.Adapter<TheresaVarnesAdapter.RowTheresavarnesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTheresavarnesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_theresavarnes,parent,false)
    return RowTheresavarnesVH(view)
  }

  override fun onBindViewHolder(holder: RowTheresavarnesVH, position: Int) {
    val theresavarnesRowModel = TheresavarnesRowModel()
    // TODO uncomment following line after integration with data source
    // val theresavarnesRowModel = list[position]
    holder.binding.theresavarnesRowModel = theresavarnesRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TheresavarnesRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: TheresavarnesRowModel
    ) {
    }
  }

  inner class RowTheresavarnesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTheresavarnesBinding = RowTheresavarnesBinding.bind(itemView)
    init {
      binding.linearTypeMessengerList.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, TheresavarnesRowModel())
      }
    }
  }
}
